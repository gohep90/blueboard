package blue.dao;

import java.util.List;

import java.util.Map;

import org.springframework.stereotype.Repository;

import blue.absolute.dao.abDAO;


@SuppressWarnings("unchecked")
@Repository("dao")
public class dao extends abDAO{

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
}
