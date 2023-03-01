package com.uk.secureapi.secureapi.controller

import com.uk.secureapi.secureapi.data.Message
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
class MessageController {

    @GetMapping("/")
    fun index() = listOf<Message>(
        Message("1", "Hello!"),
        Message("2", "Mister"),
        Message("3", "boy!")
    )
}