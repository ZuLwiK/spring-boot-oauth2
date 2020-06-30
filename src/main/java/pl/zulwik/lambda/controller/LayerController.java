package pl.zulwik.lambda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.zulwik.lambda.model.Facility;
import pl.zulwik.lambda.model.Layer;

import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping("/facilities")
public class LayerController {

    @RequestMapping(value = "/{facilityId}/layers/add", method = RequestMethod.POST)
    public String create(@Valid Facility facility, BindingResult result, Principal principal, @PathVariable Long facilityId, ModelMap model) {
        if (result.hasErrors()) {
            return "facilities";
        }

        return ("redirect:/facilities/all");
    }
}
