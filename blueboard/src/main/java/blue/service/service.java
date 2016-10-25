package blue.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import blue.absolute.dao.abDAO;

@SuppressWarnings("unchecked")
@Service("service")
public class service extends abDAO {
	
	

	public void updateEdu(Map<String, Object> map) {
		update("blue.updateEdu",map);
	}

	public List<Map<String, Object>> selectAcademyData(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectAcademyData", map);
	}

	public List<Map<String, Object>> selectFavorite(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFavorite", map);
	}

	public List<Map<String, Object>> selectFavoriteCount(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFavoriteCount", map);
	}


	public void deleteFavorite(Map<String, Object> map) {
		delete("blue.deleteFavorite",map);
	}

	public void deleteFavoriteAll(Map<String, Object> map) {
		delete("blue.deleteFavoriteAll",map);
	}

	public void insertFavorite(Map<String, Object> map) {
		insert("blue.insertFavorite",map);
	}

	public List<Map<String, Object>> selectAdmin(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectAdmin", map);
	}

	public List<Map<String, Object>> selectAdminCount(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectAdminCount", map);
	}

	
}
