package pl.zulwik.lambda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.zulwik.lambda.model.Facility;
import pl.zulwik.lambda.model.Layer;
import pl.zulwik.lambda.model.Material;
import pl.zulwik.lambda.repo.FacilityRepository;
import pl.zulwik.lambda.repo.LayerRepository;
import pl.zulwik.lambda.repo.MaterialRepository;
import pl.zulwik.lambda.repo.UserRepository;


import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/facilities")
public class FacilityController {

    private final UserRepository userRepository;
    private final FacilityRepository facilityRepository;
    private final MaterialRepository materialRepository;
    private final LayerRepository layerRepository;

    public FacilityController(UserRepository userRepository, FacilityRepository facilityRepository, MaterialRepository materialRepository, LayerRepository layerRepository) {
        this.userRepository = userRepository;
        this.facilityRepository = facilityRepository;
        this.materialRepository = materialRepository;
        this.layerRepository = layerRepository;
    }

    @RequestMapping(value = "/populate", method = RequestMethod.GET)
    public String populateWithObjects(Model model, Principal principal) {
        for (int i = 1; i < 6; i++) {
            Facility facility = new Facility();
            facility.setName("name" + i);
            facility.setUser(userRepository.findByEmail(principal.getName()));
            facility.setInnerTemperature(1100);
            facility.setOuterTemperature(20);
            facility.setWindSpeed(1);
            facilityRepository.save(facility);
        }
        List<Facility> facilities = facilityRepository.customFindByUser(userRepository.findByEmail(principal.getName()));
        model.addAttribute("facilities", facilities);
        return "facilities";
    }

    @GetMapping("/all")
    public String getAllFacilities(Model model, Principal principal) throws Exception {
//        List<Material> material = materialRepository.findAll();
        List<Facility> facilities = facilityRepository.customFindByUser(userRepository.findByEmail(principal.getName()));
        model.addAttribute("facilities", facilities);
        return "facilities";
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String getFacilityForm(ModelMap model, Principal principal) {
        Facility facility = new Facility();
        List<Layer> layers = new ArrayList<>();
        model.addAttribute("facility", facility);
        model.addAttribute("layer", new Layer());
       /* model.addAttribute("layers",layers);*/
       /* model.addAttribute("facilityId",facilityRepository.findFirstOrderByIdDesc().getId());*/
//        model.addAttribute("materials", materialRepository.customFindByUser(userRepository.findByEmail(principal.getName())));
        return "facilityFormAddPlain";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String create(@Valid Facility facility, BindingResult result, Principal principal) {
        if (result.hasErrors()) {
            return "facilities";
        }
        facility.setUser(userRepository.findByEmail(principal.getName()));
        facilityRepository.save(facility);
        return ("redirect:/facilities/all");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String delete(@ModelAttribute Facility facility) {
        facilityRepository.delete(facility);
        return "redirect:/facilities/all";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String editFacility(Model model, @PathVariable long id) throws Exception {
        Facility facility = facilityRepository.findById(id).orElseThrow(Exception::new);
        model.addAttribute("facility", facility);
        return "facilityFormEditPlainCopy";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String update(@Valid Facility facility, BindingResult result, Principal principal) throws Exception {
        if (result.hasErrors()) {
            return "facilityFormEditPlain";
        }
        facility.setUser(userRepository.findByEmail(principal.getName()));
        facilityRepository.save(facility);
        return "redirect:/facilities/all";
    }

    @ModelAttribute("materials")
    public List<Material> materialList(Principal principal) {
        return materialRepository.customFindByUser(userRepository.findByEmail(principal.getName()));
    }
    @GetMapping("/test")
    public String test(Model model) {
        List<String> test = new ArrayList<>();
        model.addAttribute("test",test);
        return "test";
    }
}
