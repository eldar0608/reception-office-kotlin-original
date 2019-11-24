package com.myproject.receptionofficekotlin.service.entity

import com.myproject.receptionofficekotlin.domain.entity.Country
import com.myproject.receptionofficekotlin.repository.CountryRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

interface CountryService {
    fun get(countryId: Long): Country
}

@Service
class DefaultCountryService(
        private val countryRepository: CountryRepository
) : CountryService {

    @Transactional(readOnly = true)
    override fun get(countryId: Long): Country {
        return countryRepository.findById(countryId).get()
    }

}