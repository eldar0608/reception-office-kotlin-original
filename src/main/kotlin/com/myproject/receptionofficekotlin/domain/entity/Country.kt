package com.myproject.receptionofficekotlin.domain.entity

import com.myproject.receptionofficekotlin.repository.BaseEntity
import org.springframework.format.annotation.DateTimeFormat
import java.time.LocalDate
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Table
import javax.validation.constraints.NotBlank

@Entity
@Table(name = "country")
class Country(

        @Column(name = "country" , nullable =false)
        @NotBlank
        val name: String

) : BaseEntity()