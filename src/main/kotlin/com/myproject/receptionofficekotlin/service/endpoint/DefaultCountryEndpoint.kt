package com.myproject.receptionofficekotlin.service.endpoint

import com.myproject.receptionofficekotlin.domain.entity.Country
import com.myproject.receptionofficekotlin.dto.CountryDto
import com.myproject.receptionofficekotlin.service.entity.CountryService
import com.myproject.receptionofficekotlin.service.mapper.CountryMapper
import org.springframework.stereotype.Service

interface CountryEndpoint {
    fun get(countryId: Long): CountryDto
}

@Service
class DefaultCountryEndpoint(
        private val countryService: CountryService,
        private val countryMapper: CountryMapper
) : CountryEndpoint {

    override fun get(countryId: Long): CountryDto {
        val targetCountry: Country = countryService.get(countryId)
        return countryMapper.toCountryDto(targetCountry)
    }

}