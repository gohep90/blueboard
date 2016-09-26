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

	public List<Map<String, Object>> selectFirstFavorite(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFirstFavorite", map);
	}

	
}
