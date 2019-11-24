package com.myproject.receptionofficekotlin.exception

data class ErrorResponse(
        val status: Long,
        val message: String
)