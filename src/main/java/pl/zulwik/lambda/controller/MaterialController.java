package pl.zulwik.lambda.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.zulwik.lambda.model.Material;
import pl.zulwik.lambda.repo.MaterialRepository;
import pl.zulwik.lambda.repo.UserRepository;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/materials")
public class MaterialController {
    private final MaterialRepository materialRepository;
    private final UserRepository userRepository;

    public MaterialController(MaterialRepository materialRepository, UserRepository userRepository) {
        this.materialRepository = materialRepository;
        this.userRepository = userRepository;
    }

    @RequestMapping(value="/populate",method = RequestMethod.GET)
    public String populateWithMaterials(Model model, Principal principal) {
        for (int i = 1; i < 6; i++) {
            Material material = new Material();
            material.setName("name" + i);
            material.setUser(userRepository.findByEmail(principal.getName()));
            material.setMaxTemp(1800);
            material.setConductivity0200(0.3);
            materialRepository.save(material);
        }
        List<Material> material = materialRepository.customFindByUser(userRepository.findByEmail(principal.getName()));
        model.addAttribute("materials", material);
        return "materials";
    }
    @GetMapping("/all")
    public String getAllMaterials(Model model, Principal principal) throws Exception {
//        List<Material> material = materialRepository.findAll();
        List<Material> material = materialRepository.customFindByUser(userRepository.findByEmail(principal.getName()));
        model.addAttribute("materials", material);
        return "materials";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String getMaterialForm(Model model) {
        model.addAttribute("material", new Material());
        return "materialFormAddPlain";
    }
    @RequestMapping(value="/add",method = RequestMethod.POST)
    public String create(@Valid Material material, BindingResult result, Principal principal){
        if (result.hasErrors()){
            return "materials";
        }
        material.setUser(userRepository.findByEmail(principal.getName()));
        materialRepository.save(material);
        return ("redirect:/materials/all");
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String delete(@ModelAttribute Material material) {
        materialRepository.delete(material);
        return "redirect:/materials/all";
    }
    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String editMaterial(Model model, @PathVariable long id) throws Exception {
        Material material = materialRepository.findById(id).orElseThrow(Exception::new);
        model.addAttribute("material", material);
        return "materialFormEditPlain";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String update(@Valid Material material, BindingResult result, Principal principal) throws Exception {
        if (result.hasErrors()) {
            return "materialFormEditPlain";
        }
        material.setUser(userRepository.findByEmail(principal.getName()));
        materialRepository.save(material);
        return "redirect:/materials/all";
    }
}
