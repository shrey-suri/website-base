package com.example.springwebsite.service;

import com.example.springwebsite.beans.Users;
import com.example.springwebsite.service.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Service
@SessionAttributes("name")
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void addUser(Users user){
        userRepository.save(user);
    }

    public void deleteUser(Integer id){
        userRepository.deleteById(id);
    }

    public void updateUser(Integer id, Users user){
        user.setId(id);
        addUser(user);
    }

    public Users getUser(Integer id){
        return userRepository.findById(id).get();
    }


    public Integer verify(String name, String password) {
        List<Users> users = userRepository.findAll();
        for (Users user: users){
            if (name.equalsIgnoreCase(user.getName()) && password.equals(user.getPassword()))
                return user.getId();
        }
        return null;
    }


}
