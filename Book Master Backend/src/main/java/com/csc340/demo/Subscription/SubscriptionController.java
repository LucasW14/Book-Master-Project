package com.csc340.demo.Subscription;


import com.csc340.demo.User.UserService;
import com.csc340.demo.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import java.util.List;


@Controller
@RequestMapping("/subscriptions")
public class SubscriptionController {


    @Autowired
    private SubscriptionService subscriptionService;


    @Autowired
    private UserService userService;


    // Show form to create a new subscription
    @GetMapping("/new")
    public String showSubscriptionForm(Model model) {
        model.addAttribute("subscription", new Subscription());
        model.addAttribute("users", userService.getAllUsers());
        return "subscription-form";
    }


    // Handle form submission
    @PostMapping("/new")
    public String createSubscription(@ModelAttribute Subscription subscription, RedirectAttributes redirectAttributes) {
        subscriptionService.addSubscription(subscription);
        redirectAttributes.addFlashAttribute("successMessage", "Subscription successful!");
        return "redirect:/books/all";
    }


    // Show all subscriptions
    @GetMapping("/list")
    public String listSubscriptions(Model model) {
        List<Subscription> subscriptions = subscriptionService.getAllSubscriptions();
        model.addAttribute("subscriptions", subscriptions);
        return "subscription-list";
    }


    // Optional: view a subscription by ID
    @GetMapping("/{id}")
    public String getSubscriptionById(@PathVariable Long id, Model model) {
        return subscriptionService.getSubscriptionById(id)
                .map(subscription -> {
                    model.addAttribute("subscription", subscription);
                    return "subscription-details";
                })
                .orElse("error");
    }


}
