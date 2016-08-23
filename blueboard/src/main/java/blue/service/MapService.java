package blue.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import blue.absolute.dao.abDAO;

@SuppressWarnings("unchecked")
@Service("MapService")
public class MapService extends abDAO {
	

	public List<Map<String, Object>> selectCount(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectCount", map);
	}

	public List<Map<String, Object>> selectFirstEdu(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectFirstEdu", map);
	}

	public List<Map<String, Object>> selectFirstEduDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectFirstEduDiv", map);
	}

	public List<Map<String, Object>> selectEduListDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectEduListDiv", map);
	}

	public List<Map<String, Object>> selectCountDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectCountDiv", map);
	}
	
	public List<Map<String, Object>> selectEduList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectEduList", map);
	}

	public List<java.util.Map<String, Object>> selectFirstEduList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectFirstEduList", map);
	}

	public List<java.util.Map<String, Object>> selectFirstEduListDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("map.selectFirstEduListDiv", map);
	}

}
