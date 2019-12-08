package com.myproject.receptionofficekotlin.domain.entity

import com.myproject.receptionofficekotlin.domain.enums.AccountType
import javax.persistence.*

@Entity
sealed class Account(
        @Enumerated(value = EnumType.STRING)
        @Column(name = "type", updatable = false, nullable = false)
        var type: AccountType
)
