package blue.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import blue.absolute.dao.abDAO;

@SuppressWarnings("unchecked")
@Service("LoginService")
public class LoginService extends abDAO {


	public String checkId(Map<String, Object> map) {
		return (String)selectOne("login.selectCheckId", map);
	}

	public void insertUser(Map<String, Object> map) {
		insert("login.insertUser", map);
	}

	public List<Map<String, Object>> selectCheckLogin(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("login.selectCheckLogin", map);
	}

	public void insertFacebook(Map<String, Object> map) {
		insert("login.insertFacebook", map);
	}

	public List<Map<String, Object>> selectModify(Map<String, Object> map) {
		return (List<Map<String,Object>>)selectList("login.selectModify", map);
	}

	public void updateUser(Map<String, Object> map) {
		update("login.updateUser", map);
	}
	


}
