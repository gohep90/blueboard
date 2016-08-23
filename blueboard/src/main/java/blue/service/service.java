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

	public List<Map<String, Object>> selectCount(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectCount", map);
	}

	public List<Map<String, Object>> selectFirstEdu(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFirstEdu", map);
	}

	public List<Map<String, Object>> selectFirstEduDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFirstEduDiv", map);
	}

	public List<Map<String, Object>> selectEduListDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectEduListDiv", map);
	}

	public List<Map<String, Object>> selectCountDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectCountDiv", map);
	}
	
	public List<Map<String, Object>> selectEduList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectEduList", map);
	}

	public List<java.util.Map<String, Object>> selectFirstEduList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFirstEduList", map);
	}

	public List<java.util.Map<String, Object>> selectFirstEduListDiv(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectFirstEduListDiv", map);
	}

}
