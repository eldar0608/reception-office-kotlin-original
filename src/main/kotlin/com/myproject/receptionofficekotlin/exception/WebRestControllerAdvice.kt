package com.myproject.receptionofficekotlin.exception

import org.springframework.web.bind.annotation.RestControllerAdvice
import org.hibernate.exception.ConstraintViolationException
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.ResponseStatus


@RestControllerAdvice
class WebRestControllerAdvice{
    @ExceptionHandler(value = [(ConstraintViolationException::class)])
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    fun constraintViolationException(ex: ConstraintViolationException): ErrorResponse {
        return ErrorResponse(400, "Bad Request")
    }

    @ExceptionHandler(value = *arrayOf(Exception::class))
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    fun unknownException(ex: Exception): ErrorResponse {
        return ErrorResponse(500, "Internal Server Error")
    }
}