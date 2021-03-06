package com.github.projetoleaf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.github.projetoleaf.beans.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {

}
