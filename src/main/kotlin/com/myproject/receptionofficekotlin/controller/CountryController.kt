package com.myproject.receptionofficekotlin.controller

import com.myproject.receptionofficekotlin.domain.entity.Country
import com.myproject.receptionofficekotlin.dto.CountryDto
import com.myproject.receptionofficekotlin.repository.CountryRepository
import com.myproject.receptionofficekotlin.service.endpoint.CountryEndpoint
import org.springframework.web.bind.annotation.*
import java.time.LocalDate
import javax.validation.Valid

@RestController
@RequestMapping("/api/country")
class CountryController(
        private val countryEndpoint: CountryEndpoint,
        private val countryRepository: CountryRepository
){

    @GetMapping("/{countryId}")
    fun getCountry(@PathVariable countryId: Long): CountryDto = countryEndpoint.get(countryId)

    @GetMapping("/byName")
    fun getCustodian(@RequestParam name: String): Country = countryRepository.findByName(name)

    @PostMapping("/lol")
    fun lol(@Valid @RequestBody lol: CountryDto):CountryDto {
        return lol
    }
}