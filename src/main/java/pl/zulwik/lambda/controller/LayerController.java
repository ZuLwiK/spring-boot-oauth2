/*
package pl.zulwik.lambda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pl.zulwik.lambda.exception.NoSuchFacilityExistException;
import pl.zulwik.lambda.model.Facility;
import pl.zulwik.lambda.model.Layer;
import pl.zulwik.lambda.repo.FacilityRepository;

import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/facilities")
public class LayerController {
   private final FacilityRepository facilityRepository;

    public LayerController(FacilityRepository facilityRepository) {
        this.facilityRepository = facilityRepository;
    }

    @RequestMapping(value = "/{facilityId}/layers/add", method = RequestMethod.GET)
    public ModelAndView getFacilityForm(@PathVariable Long facilityId) {
        ModelAndView modelAndView = new ModelAndView();

        Optional<Facility> facility = facilityRepository.findById(facilityId);
        Layer layer = new Layer();
        modelAndView.addObject("layer",layer);
        modelAndView.addObject("facility",facility);
        modelAndView.setViewName("layerFormAdd");
*/
/*        model.addAttribute("layer",new Layer());
        model.addAttribute("facility", facility);*//*

        */
/*model.addAttribute("material", materialRepository.customFindByUser(userRepository.findByEmail(principal.getName())));*//*

        return  modelAndView;
    }

    @RequestMapping(value = "/{facilityId}/layers/add", method = RequestMethod.POST)
    public String create(@Valid Facility facility, BindingResult result, Principal principal, @PathVariable Long facilityId, ModelAndView modelAndView) {
        if (result.hasErrors()) {
            return "facilities";
        }

        return ("redirect:/facilities/add");
    }
}
*/
