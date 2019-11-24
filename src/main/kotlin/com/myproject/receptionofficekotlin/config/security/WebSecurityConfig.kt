package com.myproject.receptionofficekotlin.config.security

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Configuration
import org.springframework.http.HttpMethod
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.builders.WebSecurity
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.web.util.matcher.RequestMatcher
import javax.servlet.http.HttpServletResponse

@Configuration
@EnableWebSecurity
class WebSecurityConfig(

) : WebSecurityConfigurerAdapter()
{
    private companion object {
        private val HEALTH_ENDPOINTS = "/actuator/**"
        private const val AUTH_ENDPOINTS = "/api/auth/**"
    }

    @Autowired
    fun configureGlobal(auth: AuthenticationManagerBuilder){
        auth
                .inMemoryAuthentication()
                .withUser("user").password("pass")
                .roles("USER")
    }

    override fun configure(auth: HttpSecurity) {
        http.exceptionHandling()
                .authenticationEntryPoint { _, response, _ ->
                    response.status = HttpServletResponse.SC_UNAUTHORIZED
                }

        http
                .authorizeRequests()
//                .anyRequest().authenticated()
//                .antMatchers("/delete/**").hasAnyAuthority("Admin")
                .requestMatchers(RequestMatcher { HttpMethod.OPTIONS.matches(it.method) }).permitAll()
                .antMatchers("/**").authenticated()
                .and()

                .formLogin()
                    .loginPage("/auth/login").permitAll()
                    .loginProcessingUrl("auth/login").permitAll()

//                .and().logout().permitAll().logoutUrl("/doLogout")

                .and()
                .csrf().disable()
    }

    override fun configure(web: WebSecurity) {
        web.ignoring()
                .antMatchers(AUTH_ENDPOINTS)
    }
}