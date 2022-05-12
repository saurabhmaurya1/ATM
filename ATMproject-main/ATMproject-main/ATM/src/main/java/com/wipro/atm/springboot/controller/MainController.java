package com.wipro.atm.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * Created by me on 12-05-2022.
 * @author SAURABH
 */
@Controller
public class MainController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }
    @RequestMapping("/button")
    public String button() {
        return "button";
    }
    @RequestMapping("/button2")
    public String button2() {
        return "button2";
    }
    
    @RequestMapping("/checkbal")
    public String checkbal() {
        return "checkbal";
    }
    
    @RequestMapping("/index")
    public String index2() {
        return "index";
    }
    @RequestMapping("/logout")
    public String logout() {
        return "logout";
    }
    
    @RequestMapping("/loginpage")
    public String loginpage() {
        return "loginpage";
    }
    
    @RequestMapping("/pin")
    public String pin() {
        return "pin";
    }
    
    @RequestMapping("/FirstTimePinGeneration")
    public String FirstTimePinGeneration() {
        return "FirstTimePinGeneration";
    }
    
    @RequestMapping("/pincheck")
    public String pincheck() {
        return "pincheck";
    }
    
    @RequestMapping("/CustomerHomePage")
    public String CustomerHomePage() {
        return "CustomerHomePage";
    }
    
    @RequestMapping("/deposit")
    public String deposit() {
        return "deposit";
    }
    
    @RequestMapping("/balance")
    public String balance() {
        return "balance";
    }
    
    @RequestMapping("/withdraw")
    public String withdraw() {
        return "withdraw";
    }
    
    @RequestMapping("/withdrawal2")
    public String withdrawal2() {
        return "withdrawal2";
    }
    
    @RequestMapping("/fastcashwithdraw")
    public String fastcashwithdraw() {
        return "fastcashwithdraw";
    }
    @RequestMapping("/fastcashwithdraw2")
    public String fastcashwithdraw2() {
        return "fastcashwithdraw2";
    }
    
    @RequestMapping("/changepin")
    public String changepin() {
        return "changepin";
    }
    
    @RequestMapping("/mychangepin")
    public String mychangepin() {
        return "mychangepin";
    }
    
    @RequestMapping("/ministatment")
    public String ministatment() {
        return "ministatment";
    }
    @RequestMapping("/ministatmentpage")
    public String ministatmentpage() {
        return "ministatmentpage";
    }
    
    @RequestMapping("/pincheckAdmin")
    public String pincheckAdmin() {
        return "pincheckAdmin";
    }
    @RequestMapping("/AdminHomePage")
    public String AdminHomePage() {
        return "AdminHomePage";
    }
    
    @RequestMapping("/addbranch")
    public String addbranch() {
        return "addbranch";
    }
    @RequestMapping("/closeaccounts")
    public String closeaccounts() {
        return "closeaccounts";
    }
    
    @RequestMapping("/ModifyDetails")
    public String ModifyDetails() {
        return "ModifyDetails";
    }
    
    @RequestMapping("/modifypage")
    public String modifypage() {
        return "modifypage";
    }
    
    @RequestMapping("/changeaddress")
    public String changeaddress() {
        return "changeaddress";
    }
    
    @RequestMapping("/changeaddress2")
    public String changeaddress2() {
        return "changeaddress2";
    }
    
    @RequestMapping("/changebranchid")
    public String changebranchid() {
        return "changebranchid";
    }
    
    @RequestMapping("/changebranchid2")
    public String changebranchid2() {
        return "changebranchid2";
    }
    
    @RequestMapping("/changedob")
    public String changedob() {
        return "changedob";
    }
    
    @RequestMapping("/changedob2")
    public String changedob2() {
        return "changedob2";
    }
    
    @RequestMapping("/changemno")
    public String changemno() {
        return "changemno";
    }
    
    @RequestMapping("/changemno2")
    public String changemno2() {
        return "changemno2";
    }
    
    @RequestMapping("/changename")
    public String changename() {
        return "changename";
    }
    @RequestMapping("/changename2")
    public String changename2() {
        return "changename2";
    }
    
    @RequestMapping("/changepan")
    public String changepan() {
        return "changepan";
    }
    @RequestMapping("/changepan2")
    public String changepan2() {
        return "changepan2";
    }
    
    @RequestMapping("/changetype")
    public String changetype() {
        return "changetype";
    }
    @RequestMapping("/changetype2")
    public String changetype2() {
        return "changetype2";
    }
    @RequestMapping("/AccountStatment")
    public String AccountStatment() {
        return "AccountStatment";
    }
    @RequestMapping("/statmentpage")
    public String statmentpage() {
        return "statmentpage";
    }
    @RequestMapping("/statment")
    public String statment() {
        return "statment";
    }
    @RequestMapping("/verifycheck")
    public String verifycheck() {
        return "verifycheck";
    }
    @RequestMapping("/getcheck")
    public String getcheck() {
        return "getcheck";
    }
    @RequestMapping("/verifycheque")
    public String verifycheque() {
        return "verifycheque";
    }
    @RequestMapping("/register")
    public String register() {
        return "register";
    }
    @RequestMapping("/insert")
    public String insert() {
        return "insert";
    }
    @RequestMapping("/bankinsert")
    public String bankinsert() {
        return "bankinsert";
    }
    @RequestMapping("/logininsert")
    public String logininsert() {
        return "logininsert";
    }
    @RequestMapping("/forgetpin")
    public String forgetpin() {
        return "forgetpin";
    }
}
