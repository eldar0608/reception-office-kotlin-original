package com.myproject.receptionofficekotlin.dto

import com.fasterxml.jackson.annotation.JsonFormat
import org.springframework.format.annotation.DateTimeFormat
import java.util.*

data class CountryDto(
        val id: Long,
        val name: String,

        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
//        @JsonFormat(pattern = "yyyy-MM-dd")
        @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
        val date: Date?

)