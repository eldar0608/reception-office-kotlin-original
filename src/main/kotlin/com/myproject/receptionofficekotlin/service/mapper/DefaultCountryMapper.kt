package com.myproject.receptionofficekotlin.service.mapper

import com.myproject.receptionofficekotlin.domain.entity.Country
import com.myproject.receptionofficekotlin.dto.CountryDto
import org.springframework.stereotype.Service

interface CountryMapper {
    fun toCountryDto(country: Country): CountryDto
}

@Service
class DefaultCountryMapper() : CountryMapper {

    override fun toCountryDto(country: Country): CountryDto = CountryDto(
            id = country.id!!,
            name = country.name,
            date = null
    )

}