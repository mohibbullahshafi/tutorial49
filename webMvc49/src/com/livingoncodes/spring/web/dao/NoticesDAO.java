package com.livingoncodes.spring.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("noticesDao")
public class NoticesDAO {
	private NamedParameterJdbcTemplate jdbc;

	 @Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Notice> getNotices() {
		

		return jdbc.query("select * from notices", new RowMapper<Notice>() {

			public Notice mapRow(ResultSet rs, int rowNum) throws SQLException {

				Notice notice = new Notice();
				notice.setId(rs.getInt("id"));
				notice.setName(rs.getString("name"));
				notice.setEmail(rs.getString("email"));
				notice.setText(rs.getString("text"));
				return notice;
			}

		});

	}

	public Notice getNotice(int id) {
		// jdbc.execute("insert into notice(name,email,text)
		// values('Mamun','shafi9043@gmail.com','Hello Spring!')");
		MapSqlParameterSource parameterSource = new MapSqlParameterSource();
		parameterSource.addValue("id", id);

		return jdbc.queryForObject("select * from notice where id=:id", parameterSource, new RowMapper<Notice>() {

			public Notice mapRow(ResultSet rs, int rowNum) throws SQLException {

				Notice notice = new Notice();
				notice.setId(rs.getInt("id"));
				notice.setName(rs.getString("name"));
				notice.setEmail(rs.getString("email"));
				notice.setText(rs.getString("text"));
				return notice;
			}

		});

	}

	public boolean create(Notice notice) {
		BeanPropertySqlParameterSource parameterSource = new BeanPropertySqlParameterSource(notice);

		return jdbc.update("insert into notice (name,email,text) values(:name,:email,:text)", parameterSource) == 1;

	}

	public boolean update(Notice notice) {
		BeanPropertySqlParameterSource parameterSource = new BeanPropertySqlParameterSource(notice);

		return jdbc.update("update  notice set name=:name,email=:email,text=:text where id=:id", parameterSource) == 1;

	}

	public boolean delete(int id) {
		MapSqlParameterSource parameterSource = new MapSqlParameterSource();
		parameterSource.addValue("id", id);

		return jdbc.update("delete from notice where id=:id", parameterSource) == 1;
	}

}
