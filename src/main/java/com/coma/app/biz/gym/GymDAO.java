package com.coma.app.biz.gym;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Slf4j
@Repository
public class GymDAO {
	//(페이지 네이션) 암벽장 전체출력
	private String ALL = "SELECT \n" +
			"    G.GYM_NUM, \n" +
			"    G.GYM_NAME, \n" +
			"    G.GYM_PROFILE, \n" +
			"    G.GYM_DESCRIPTION, \n" +
			"    G.GYM_LOCATION, \n" +
			"    G.GYM_RESERVATION_CNT, \n" +
			"    G.GYM_PRICE, \n" +
			"    B.BATTLE_NUM, \n" +
			"    B.BATTLE_GAME_DATE\n" +
			"FROM \n" +
			"    GYM G\n" +
			"LEFT JOIN \n" +
			"    BATTLE B ON G.GYM_NUM = B.BATTLE_GYM_NUM\n" +
			"ORDER BY \n" +
			"    GYM_NUM\n" +
			"LIMIT ?, ?";  // ?는 시작 인덱스와 행 수를 위한 자리 표시자

	//암벽장 총 개수 // TODO 관리자 메인 페이지
	private final String ONE_COUNT = "SELECT COUNT(*) AS GYM_TOTAL FROM GYM";
	
	//암벽장 PK로 검색 GYM_NUM
	private final String ONE = "SELECT\r\n"
			+ "	G.GYM_NUM,\r\n"
			+ "	G.GYM_NAME,\r\n"
			+ "	G.GYM_PROFILE,\r\n"
			+ "	G.GYM_DESCRIPTION,\r\n"
			+ "	G.GYM_LOCATION,\r\n"
			+ "	G.GYM_RESERVATION_CNT,\r\n"
			+ "	G.GYM_PRICE,\r\n"
			+ "	B.BATTLE_NUM,\r\n"
			+ "	B.BATTLE_GAME_DATE\r\n"
			+ "FROM\r\n"
			+ "	GYM G\r\n"
			+ "LEFT JOIN\r\n"
			+ "	BATTLE B\r\n"
			+ "ON\r\n"
			+ "	G.GYM_NUM = B.BATTLE_GYM_NUM\r\n"
			+ "WHERE\r\n"
			+ "	G.GYM_NUM = ?";
	
	//예약가능 개수 업데이트 GYM_RESERVATION_CNT, GYM_NUM
	private final String UPDATE_RESERVATION_CNT = "UPDATE GYM SET GYM_RESERVATION_CNT = ? WHERE GYM_NUM = ?";

	//암벽장 승인여부 업데이트 GYM_ADMIN_BATTLE_VERIFIED, GYM_NUM // TODO 관리자 메인 페이지
	private final String UPDATE_ADMIN_BATTLE_VERIFIED = "UPDATE GYM SET GYM_ADMIN_BATTLE_VERIFIED = ? WHERE GYM_NUM = ?";

	//암벽장 등록 GYM_NAME, GYM_PROFILE, GYM_DESCRIPTION, GYM_LOCATION
	private final String INSERT = "INSERT INTO GYM (GYM_NAME, GYM_PROFILE, GYM_DESCRIPTION, GYM_LOCATION) "
			+ "VALUES (?, ?, ?, ?)";

	//지역별 암벽장 개수 출력 // TODO 관리자 메인 페이지
	private final String ALL_LOCATION_COUNT_ADMIN = "SELECT \n"
			+ "    SUBSTRING_INDEX(GYM_LOCATION, ' ', 1) AS GYM_LOCATION_COUNT,\n"
			+ "    COUNT(*) AS GYM_TOTAL\n"
			+ "FROM \n"
			+ "    GYM\n"
			+ "GROUP BY \n"
			+ "    GYM_LOCATION_COUNT\n"
			+ "ORDER BY \n"
			+ "    GYM_LOCATION_COUNT";

	//암벽장 관리 리스트 출력(페이지네이션) // TODO 암벽장 관리 페이지
	private final String ALL_ADMIN = "SELECT GYM_NUM, GYM_PROFILE, GYM_NAME, GYM_LOCATION, GYM_PRICE, GYM_DESCRIPTION, GYM_ADMIN_BATTLE_VERIFIED\n"
			+ "FROM gym\n"
			+ "ORDER BY GYM_NUM DESC\n"
			+ "LIMIT ?, ?";

	// 승인,비승인된 암벽장 중 이름 검색 // TODO 암벽장 관리 페이지
	private final String ALL_ADMIN_VERIFIED = "SELECT \n" +
			"    GYM_NUM,\n" +
			"    GYM_PROFILE,\n" +
			"    GYM_NAME,\n" +
			"    GYM_LOCATION,\n" +
			"    GYM_PRICE,\n" +
			"    GYM_DESCRIPTION,\n" +
			"    GYM_ADMIN_BATTLE_VERIFIED\n" +
			"FROM \n" +
			"    gym\n" +
			"WHERE \n" +
			"    GYM_ADMIN_BATTLE_VERIFIED = ?\n" +
			"    AND GYM_NAME LIKE CONCAT('%', ?, '%')\n" +
			"ORDER BY \n" +
			"    GYM_NUM DESC\n" +
			"LIMIT ?, ?";

	// 전체 암벽장 중 이름 검색 // TODO 암벽장 관리 페이지
	private final String ALL_ADMIN_SEARCH = "SELECT \n" +
			"    GYM_NUM,\n" +
			"    GYM_PROFILE,\n" +
			"    GYM_NAME,\n" +
			"    GYM_LOCATION,\n" +
			"    GYM_PRICE,\n" +
			"    GYM_DESCRIPTION,\n" +
			"    GYM_ADMIN_BATTLE_VERIFIED\n" +
			"FROM \n" +
			"    gym\n" +
			"WHERE \n" +
			"    GYM_NAME LIKE CONCAT('%', ?, '%')\n" +
			"ORDER BY \n" +
			"    GYM_NUM DESC\n" +
			"LIMIT ?, ?";

	//승인,비승인된 암벽장 중 이름 검색 카운트 // TODO 암벽장 관리 페이지
	private final String ALL_ADMIN_VERIFIED_COUNT = "SELECT \n" +
			"    COUNT(*) AS GYM_TOTAL \n" +
			"FROM \n" +
			"    gym\n" +
			"WHERE \n" +
			"    GYM_ADMIN_BATTLE_VERIFIED = ?\n" +
			"    AND GYM_NAME LIKE CONCAT('%', ?, '%')";

	// 전체 암벽장 중 이름 검색 카운트 // TODO 암벽장 관리 페이지
	private final String ALL_ADMIN_SEARCH_COUNT = "SELECT \n" +
			"    COUNT(*) AS GYM_TOTAL \n" +
			"FROM \n" +
			"    gym\n" +
			"WHERE \n" +
			"    GYM_NAME LIKE CONCAT('%', ?, '%')";

	//암벽장 추가 GYM_NAME, GYM_LOCATION, GYM_PRICE, GYM_DESCRIPTION, GYM_PROFILE // TODO 암벽장 관리 페이지
	private final String INSERT_ADMIN = "INSERT INTO GYM (GYM_NAME, GYM_LOCATION, GYM_PRICE, GYM_DESCRIPTION, GYM_PROFILE)\n"
			+ "VALUES (?, ?, ?, ?, ?)";

	@Autowired
	private JdbcTemplate jdbcTemplate; // 스프링부트 내장객체

	public boolean insert(GymDTO gymDTO) {
		//암벽장 등록 GYM_NAME, GYM_PROFILE, GYM_DESCRIPTION, GYM_LOCATION
		int result=jdbcTemplate.update(INSERT,gymDTO.getGym_name(),gymDTO.getGym_profile(),gymDTO.getGym_description(),gymDTO.getGym_location());
		if(result<=0) {
			return false;
		}
		return true;
	}

	public boolean insertAdmin(GymDTO gymDTO) {
		//암벽장 추가 GYM_NAME, GYM_LOCATION, GYM_PRICE, GYM_DESCRIPTION, GYM_PROFILE // TODO 암벽장 관리 페이지
		int result=jdbcTemplate.update(INSERT_ADMIN,gymDTO.getGym_name(),gymDTO.getGym_location(),gymDTO.getGym_price(),gymDTO.getGym_description(),gymDTO.getGym_profile());
		if(result<=0) {
			return false;
		}
		return true;
	}

	public boolean update(GymDTO gymDTO) {
		//예약가능 개수 업데이트 GYM_RESERVATION_CNT, GYM_NUM
		int result=jdbcTemplate.update(UPDATE_RESERVATION_CNT, gymDTO.getGym_reservation_cnt(),gymDTO.getGym_num());
		if(result<=0) {
			return false;
		}
		return true;
	}

	public boolean updateAdminBattleVerified(GymDTO gymDTO) {
		//암벽장 승인여부 업데이트 GYM_ADMIN_BATTLE_VERIFIED, GYM_NUM
		log.info("[{}]",gymDTO.getGym_admin_battle_verified());
		log.info("[{}]",gymDTO.getGym_num());
		int result=jdbcTemplate.update(UPDATE_ADMIN_BATTLE_VERIFIED, gymDTO.getGym_admin_battle_verified(),gymDTO.getGym_num());
		if(result<=0) {
			return false;
		}
		return true;
	}

	public boolean delete(GymDTO gymDTO) { // TODO 여기없는 CRUD
		return false;
	}

	public GymDTO selectOne(GymDTO gymDTO){
		GymDTO data=null;
		Object[] args= {gymDTO.getGym_num()};
		try {
			//암벽장 PK로 검색 GYM_NUM
			data= jdbcTemplate.queryForObject(ONE, args, new GymSelectRowMapperOneAll());
		}
		catch (Exception e) {
		}
		return data;
	}

	public GymDTO selectOneCount(GymDTO gymDTO){
		GymDTO data=null;
		try {
			//암벽장 총 개수
			data= jdbcTemplate.queryForObject(ONE_COUNT, new GymCountRowMapper());
		}
		catch (Exception e) {
		}
		return data;
	}

	public GymDTO selectOneAdminVerifiedCount(GymDTO gymDTO) {
		GymDTO data=null;
		Object[] args= {gymDTO.getGym_admin_battle_verified(),gymDTO.getSearch_content()};
		try {
			//승인,비승인된 암벽장 중 이름 검색 카운트 // TODO 암벽장 관리 페이지
			data= jdbcTemplate.queryForObject(ALL_ADMIN_VERIFIED_COUNT, args, new GymCountRowMapper());
		}
		catch (Exception e) {
		}
		return data;
	}

	public GymDTO selectOneAdminSearchCount(GymDTO gymDTO) {
		GymDTO data=null;
		Object[] args= {gymDTO.getSearch_content()};
		try {
			//전체 암벽장 중 이름 검색 카운트 // TODO 암벽장 관리 페이지
			data= jdbcTemplate.queryForObject(ALL_ADMIN_SEARCH_COUNT, args, new GymCountRowMapper());
		}
		catch (Exception e) {
		}
		return data;
	}

	public List<GymDTO> selectAll(GymDTO gymDTO){

		Object[] args= {gymDTO.getGym_min_num(),6};
		//(페이지 네이션) 암벽장 전체출력
		List<GymDTO> datas=null;
		datas=jdbcTemplate.query(ALL,args,new GymSelectRowMapperOneAll());
		return datas;
	}

	public List<GymDTO> selectAllLocationCountAdmin(GymDTO gymDTO){

		//지역별 암벽장 개수 출력 // TODO 관리자 메인 페이지
		List<GymDTO> datas=null;
		datas=jdbcTemplate.query(ALL_LOCATION_COUNT_ADMIN,new GymLocationCountRowMapper());
		return datas;
	}

	public List<GymDTO> selectAllAdmin(GymDTO gymDTO){
		Object[] args= {gymDTO.getGym_min_num(),10};
		//암벽장 관리 리스트 출력(페이지네이션) // TODO 암벽장 관리 페이지
		List<GymDTO> datas=null;
		datas=jdbcTemplate.query(ALL_ADMIN,args,new GymAdminMapperAll());
		return datas;
	}

	public List<GymDTO> selectAllAdminVerified(GymDTO gymDTO){
		Object[] args= {gymDTO.getGym_admin_battle_verified(),gymDTO.getSearch_content(),gymDTO.getGym_min_num(),10};
		// 승인,비승인된 암벽장 중 이름 검색 // TODO 암벽장 관리 페이지
		List<GymDTO> datas=null;
		datas=jdbcTemplate.query(ALL_ADMIN_VERIFIED,args,new GymAdminMapperAll());
		return datas;
	}

	public List<GymDTO> selectAllAdminSearch(GymDTO gymDTO){
		Object[] args= {gymDTO.getSearch_content(),gymDTO.getGym_min_num(),10};
		// 전체 암벽장 중 이름 검색 // TODO 암벽장 관리 페이지
		List<GymDTO> datas=null;
		datas=jdbcTemplate.query(ALL_ADMIN_SEARCH,args,new GymAdminMapperAll());
		return datas;
	}
}
@Slf4j
class GymSelectRowMapperOneAll implements RowMapper<GymDTO> {

	public GymDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		GymDTO gymDTO=new GymDTO();
		log.info("GymSelectRowMapper DB에서 가져온 데이터 ↓↓↓↓↓");
		gymDTO.setGym_num(rs.getInt("GYM_NUM"));
		log.info("gym_num = [{}]", gymDTO.getGym_num());
		gymDTO.setGym_name(rs.getString("GYM_NAME"));
		log.info("gym_name = [{}]", gymDTO.getGym_name());
		gymDTO.setGym_profile(rs.getString("GYM_PROFILE"));
		log.info("gym_profile = [{}]", gymDTO.getGym_profile());
		gymDTO.setGym_description(rs.getString("GYM_DESCRIPTION"));
		log.info("gym_description = [{}]", gymDTO.getGym_description());
		gymDTO.setGym_location(rs.getString("GYM_LOCATION"));
		log.info("gym_location = [{}]", gymDTO.getGym_location());
		gymDTO.setGym_reservation_cnt(rs.getInt("GYM_RESERVATION_CNT"));
		log.info("gym_reservation_cnt = [{}]", gymDTO.getGym_reservation_cnt());
		gymDTO.setGym_price(rs.getInt("GYM_PRICE"));
		log.info("gym_price = [{}]", gymDTO.getGym_price());
		gymDTO.setGym_battle_num(rs.getInt("BATTLE_NUM"));
		log.info("gym_battle_num = [{}]", gymDTO.getGym_battle_num());
		gymDTO.setGym_battle_game_date(rs.getString("BATTLE_GAME_DATE"));
		log.info("gym_battle_game_date = [{}]", gymDTO.getGym_battle_game_date());
		log.info("GymSelectRowMapper DB에서 가져온 데이터 ↑↑↑↑↑");
		return gymDTO;
	};
}
@Slf4j
class GymCountRowMapper implements RowMapper<GymDTO> {

	public GymDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		GymDTO gymDTO=new GymDTO();
		log.info("GymCountRowMapper DB에서 가져온 데이터 ↓↓↓↓↓");
		gymDTO.setTotal(rs.getInt("GYM_TOTAL"));
		log.info("total = [{}]", gymDTO.getTotal());
		log.info("GymCountRowMapper DB에서 가져온 데이터 ↑↑↑↑↑");
		return gymDTO;
	};
}
@Slf4j
class GymLocationCountRowMapper implements RowMapper<GymDTO> {

	public GymDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		GymDTO gymDTO=new GymDTO();
		log.info("GymLocationCountRowMapper DB에서 가져온 데이터 ↓↓↓↓↓");
		gymDTO.setGym_location(rs.getString("GYM_LOCATION_COUNT"));
		log.info("gym_location = [{}]", gymDTO.getGym_location());
		gymDTO.setTotal(rs.getInt("GYM_TOTAL"));
		log.info("total = [{}]", gymDTO.getTotal());
		log.info("GymLocationCountRowMapper DB에서 가져온 데이터 ↑↑↑↑↑");
		return gymDTO;
	};
}
@Slf4j
class GymAdminMapperAll implements RowMapper<GymDTO> {

	public GymDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		GymDTO gymDTO=new GymDTO();
		log.info("GymAdminMapperAll DB에서 가져온 데이터 ↓↓↓↓↓");
		gymDTO.setGym_num(rs.getInt("GYM_NUM"));
		log.info("gym_num = [{}]", gymDTO.getGym_num());
		gymDTO.setGym_profile(rs.getString("GYM_PROFILE"));
		log.info("gym_profile = [{}]", gymDTO.getGym_profile());
		gymDTO.setGym_name(rs.getString("GYM_NAME"));
		log.info("gym_name = [{}]", gymDTO.getGym_name());
		gymDTO.setGym_location(rs.getString("GYM_LOCATION"));
		log.info("gym_location = [{}]", gymDTO.getGym_location());
		gymDTO.setGym_price(rs.getInt("GYM_PRICE"));
		log.info("gym_price = [{}]", gymDTO.getGym_price());
		gymDTO.setGym_description(rs.getString("GYM_DESCRIPTION"));
		log.info("gym_description = [{}]", gymDTO.getGym_description());
		gymDTO.setGym_admin_battle_verified(rs.getString("GYM_ADMIN_BATTLE_VERIFIED"));
		log.info("gym_admin_battle_verified = [{}]", gymDTO.getGym_admin_battle_verified());
		log.info("GymAdminMapperAll DB에서 가져온 데이터 ↑↑↑↑↑");
		return gymDTO;
	};
}
