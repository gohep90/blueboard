package blue.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import blue.absolute.dao.abDAO;

@SuppressWarnings("unchecked")
@Service("AcademyService")
public class AcademyService extends abDAO {

	public List<Map<String, Object>> selectAcademyData(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("academy.selectAcademyData", map);
	}

	public void insertComment(Map<String, Object> map) {
		insert("academy.insertComment",map);
	}

	public List<java.util.Map<String, Object>> selectCommentList(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("academy.selectCommentList", map);	
	}

	public void deleteComment(Map<String, Object> map) {
		delete("academy.deleteComment",map);
	}

	public List<java.util.Map<String, Object>> selectCount(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("academy.selectCount", map);	
	}

	public void insertAcademy(Map<String, Object> map) {
		insert("academy.insertAcademy",map);
	}

	public void insertPhoto(Map<String, Object> map) {
		insert("academy.insertPhoto",map);
	}

	public void deleteAcademy(Map<String, Object> map) {
		delete("academy.deleteAcademy",map);
	}

	public List<Map<String, Object>> selectUserInfo(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("academy.selectUserInfo", map);	
	}
	
}
