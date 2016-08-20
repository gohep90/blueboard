package blue.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import blue.absolute.dao.abDAO;

@SuppressWarnings("unchecked")
@Service("service")
public class service extends abDAO {
	
	public List<Map<String, Object>> selectEduList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("blue.selectEduList", map);
	}

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
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("blue.selectFirstEduDiv", map);
	}

	public List<Map<String, Object>> selectEduListDiv(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("blue.selectEduListDiv", map);
	}

	public List<Map<String, Object>> selectCountDiv(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("blue.selectCountDiv", map);
	}

}
