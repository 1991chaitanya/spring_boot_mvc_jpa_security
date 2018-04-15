package com.personalChef.repo;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.personalChef.autoconfigure.jdbc.DataJdbcTest;
import com.personalChef.entities.Chef;

@RunWith(SpringRunner.class)
@DataJdbcTest
@ContextConfiguration(classes = TestRepo.class)
public class TestRepoTest {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private TestRepo testRepo;
	
	
	@Before
	public void setUp() {
		//TestRepoTest test = new TestRepoTest();
		jdbcTemplate.execute("create table chef (id int(11), chef_name varchar(30),address varchar(30), phone varchar(30) )");
	}
	
	@Test
	public void testStuff() {
		
		jdbcTemplate.execute("insert into chef (id, chef_name, address, phone) values (1, 'John', 'California', '+12302384932')");
		Chef chef = testRepo.findById(1);

		assertThat(chef).isNotNull();
		assertThat(chef.getId()).isEqualTo(1);
		// Some smart assertions
	}
	
	@Test
	public void testSave() throws Exception{
		
		// jdbcTemplate.execute("insert into chef (id, chef_name, address, phone) values (2, 'John', 'California', '+12302384932')");
		Chef chef = new Chef();
		chef.setId(2);
		chef.setName("Chaitanya");
		chef.setPhone("8888127034");
		chef.setAddress("Shukrawar Peth");

		int rows = testRepo.save(chef);
		
		assertThat(rows).isNotZero();
		
		chef = testRepo.findById(2);

		assertThat(chef).isNotNull();
		assertThat(chef.getId()).isEqualTo(2);
		// Some smart assertions
	}
	
	@Test (expected = Exception.class)
	public void testSaveThrowsException() throws Exception{
		
		// jdbcTemplate.execute("insert into chef (id, chef_name, address, phone) values (2, 'John', 'California', '+12302384932')");
		Chef chef = null;

		int rows = testRepo.save(chef);
		
		assertThat(rows).isNotZero();
		
		chef = testRepo.findById(2);

		assertThat(chef).isNotNull();
		assertThat(chef.getId()).isEqualTo(2);
		// Some smart assertions
	}
	
	@After
	public void tearDown() {
		jdbcTemplate.execute("drop table chef");
	}
}
