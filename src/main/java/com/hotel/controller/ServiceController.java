package com.hotel.controller;

import com.hotel.model.Service;
import com.hotel.model.ServiceType;
import com.hotel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 *  /api/services               all services
 *  /api/services/types         all types of service
 *  /api/services/type/{id}     type of {id} service
 */


@CrossOrigin
@RestController
@RequestMapping("/api/services")
public class ServiceController {

    @Autowired
    ServiceRepository serviceRepository;

    @Autowired
    ServiceTypeRepository serviceTypeRepository;

    @GetMapping
    public List<Service> getAllServices()
    {
        return serviceRepository.findAll();
    }

    @GetMapping("type/{serviceTypeId}")
    public List<Service> getAllServicesByServiceTypeId(@PathVariable Long serviceTypeId)
    {
        return serviceRepository.findByServiceType_id(serviceTypeId);
    }

    @GetMapping("room/{roomId}")
    public List<Service> getAllServicesByRoomId(@PathVariable Long roomId)
    {
        return serviceRepository.findByRoom_id(roomId);
    }

    /*@GetMapping("/{id}")*/
    /*@GetMapping("{id}")*/
    @GetMapping({"id"})
    public Service getServiceById(@PathVariable Long id)
    {
        return serviceRepository.getOne(id);
    }

    @DeleteMapping("/{id}")
    public void deleteServiceById(@PathVariable Long id)
    {
        serviceRepository.deleteById(id);
    }

    @GetMapping("/types")
    public List<ServiceType> getAllServiceTypes()
    {
        return serviceTypeRepository.findAll();
    }
}
