<?php

namespace Veebiteenus\controllers;

use Veebiteenus\Controller;

class movies extends Controller
{

    function get()
    {
        // Ensure that name exists
        $movies = empty($_GET['name']) ? '' : $_GET['name'];

        // Split pipe separated list of movies into array
        $movies = explode('|', $movies);

        // Retrieve requested movies from database
        $movies = $this->db->from("movies")->where("name", $movies)->fetchAll();

        // Output json encoded data
        $this->output($movies);
    }

    function post()
    {
        $result = $this->db->insertInto('movies', $_POST)->execute();
        $this->output((array)$result);
    }

    function put()
    {
        // Convert json encoded request body into object
        $request = json_decode(file_get_contents('php://input'));

        // Validate releaseDate
        if (!empty($request->releaseDate) && !valid_date($request->releaseDate)) {
            output_error(405, "ReleaseDate is not valid");
        }

        // Define fields allowed for updating
        $allowed_fields = array_flip([
            'name',
            'releaseDate',
            'description',
            'genre',
            'cast'
        ]);

        // Filter request fields
        $data = array_intersect_key((array)$request, $allowed_fields);

        // Update database
        $query = $this->db->update('movies')->set($data)->where('id', $request->id)->execute();

        // Verify that query succeeded
        if ($query === false) {
            output_error(500, "Server error");
        }
        exit();
    }

    function delete($id)
    {
        if (!$id > 0) {
            output_error(405, "ID is not valid");
        }

        $movie = $this->db->from("movies")->where("id", $id)->fetch();
        if (!$movie) {
            output_error(404, "Movie not found!");
        }

        $query = $this->db->deleteFrom('movies')->where('id', $id);
        $query->execute();
        if ($query === false) {
            output_error(500, "Server error");
        }
        header("HTTP/1.1 204 Ok!");
    }
}