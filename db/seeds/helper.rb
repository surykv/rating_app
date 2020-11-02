class Helper

  def find_or_create_film_location(location_name, country)
    FilmLocation.find_or_create_by!(location_name: location_name, country: country)
  end
  
  def find_or_create_user(name)
    User.find_or_create_by!(name: name)
  end
  
  def find_movie(name)
    Movie.find_by(name: name)
  end
  
  def create_crew_members(movie, member_name, role_id)
    crew_member = CrewMember.find_or_create_by!(name: member_name)
  
    CrewMapping.find_or_create_by!(crew_member_id: crew_member.id, movie_id: movie.id)
    RoleMapping.find_or_create_by!(crew_member_id: crew_member.id, role_id: role_id)
  end

  def create_role(name)
    Role.find_or_create_by!(name: name)
  end

  def find_or_create_movie(attr)
    Movie.find_or_create_by!(attr)
  end

  def create_review(attr)
    Review.find_or_create_by!(attr)
  end

  def create_film_location_mapping(movie_obj, film_location)
    FilmLocationMapping.find_or_create_by!(movie_id: movie_obj.id, film_location_id: film_location.id)
  end
end