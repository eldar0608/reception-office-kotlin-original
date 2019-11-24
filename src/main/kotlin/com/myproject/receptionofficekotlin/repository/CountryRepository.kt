package com.myproject.receptionofficekotlin.repository

import com.myproject.receptionofficekotlin.domain.entity.Country

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface CountryRepository : JpaRepository<Country, Long> {
    fun findByName(countryName: String): Country
}