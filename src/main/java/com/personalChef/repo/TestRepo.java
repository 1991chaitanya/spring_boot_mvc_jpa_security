package com.personalChef.repo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.personalChef.entities.Chef;

@Repository("testRepo")
public class TestRepo {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Chef findById(long id) {
		Chef chef = jdbcTemplate.queryForObject("select *from chef where id=?", new Object[]{id}, new RowMapper<Chef>() {
			@Override
			public Chef mapRow(ResultSet rs, int arg1) throws SQLException {
				Chef chef = new Chef();
				chef.setId(rs.getLong("id"));
				chef.setName(rs.getString("chef_name"));

				return chef;
			}
		});

		return chef;
	}

	public int save(Chef chef) throws Exception{
		if (chef == null){
			throw new Exception("Unable to insert null data");
		}
		
		int update = jdbcTemplate.update("insert into chef (id, chef_name, address, phone) values (?,?,?,?)", new Object[]{chef.getId(), chef.getName(), chef.getAddress(), chef.getAddress()});
		return update;
	}
}
