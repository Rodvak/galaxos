//package com.alex.galaxos.controllers;
//
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//public class CheckoutController {
//	
//	  @Value("${pk_test_51Ktof4EYO9X6cgwzQaUWbbADe33J2lcWYP1iboGfWTzuaDbLwZ33ZvEceGLlF87MIct07WTeMPPOqhtJg0MNdV0G00R3nYqu3T}")
//	    private String stripePublicKey;
//
//	    @RequestMapping("/checkout")
//	    public String checkout(Model model) {
//	        model.addAttribute("amount", 50 * 100); // in cents
//	        model.addAttribute("stripePublicKey", stripePublicKey);
//	        model.addAttribute("currency", ChargeRequest.Currency.EUR);
//	        return "checkout";
//	    }
//
//}
