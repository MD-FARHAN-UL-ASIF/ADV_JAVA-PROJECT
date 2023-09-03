package ecom.controller;

import ecom.domain.Address;
import ecom.domain.Customer;
import ecom.domain.User;
import ecom.service.AddressService;
import ecom.service.CustomerService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.beans.PropertyEditorSupport;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
@RequestMapping("/addresses")
public class AddressController {

    private AddressService addressService;

    private CustomerService customerService;

    public AddressController(AddressService addressService, CustomerService customerService) {
        this.addressService = addressService;
        this.customerService = customerService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

        webDataBinder.registerCustomEditor(Customer.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException
            {
                Customer customer = customerService.get(Long.parseLong(text));
                setValue(customer);
            }
        });
    }

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("addresses", addressService.list());
        return "address/list";
    }

    @RequestMapping("/create")
    public String create(Model model) {
        /*List<Customer> customers = customerService.list();*/
        model.addAttribute("address", new Address());
        model.addAttribute("customers", customerService.list());
        return "address/create";
    }

    @RequestMapping("/store")
    public String store(@Valid @ModelAttribute("address") Address address, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "address/create";
        }
        addressService.create(address);
        return "redirect:/addresses/list";
    }

    @RequestMapping("/edit")
    public String edit(@RequestParam("addressId") Long addressId, Model model) {
        model.addAttribute("address", addressService.get(addressId));
        return "address/edit";
    }

    @RequestMapping("/update")
    public String update(@Valid @ModelAttribute("address") Address address, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "address/edit";
        }
        addressService.update(address);
        return "redirect:/addresses/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("addressId") Long addressId) {
        addressService.delete(addressId);
        return "redirect:/addresses/list";
    }
}
