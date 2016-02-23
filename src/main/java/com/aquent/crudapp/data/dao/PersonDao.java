package com.aquent.crudapp.data.dao;

import com.aquent.crudapp.domain.Person;
import java.util.List;

/**
 * Operations on the "person" table.
 */
public interface PersonDao {

    /**
     * Retrieves all of the person records.
     *
     * @return list of person records
     */
    List<Person> listPeople();

    /**
     * Creates a new person record.
     *
     * @param person the values to save
     * @return the new person ID
     */
    Integer createPerson(Person person);

    /**
     * Retrieves a person record by ID.
     *
     * @param id the person ID
     * @return the person record
     */
    Person readPerson(Integer id);

    /**
     * Updates an existing person record.
     *
     * @param person the new values to save
     */
    void updatePerson(Person person);

    /**
     * Deletes a person record by ID.
     *
     * @param id the person ID
     */
    void deletePerson(Integer id);

    /**
     * Retrieve all contacts for a Client
     *
     * @param clientId Identifier or the client associated
     * @return List of all Person contacts for a specified Client
     */
    List<Person> getByClientId(Integer clientId);

    /**
     * Set the client ID for this person.
     *
     * // TODO: Allow client controller to update associated persons
     * @param person Person the client is being set on
     * @param clientId Client to assign for the associated person
     */
    void setClientId(Person person, Integer clientId);
}
