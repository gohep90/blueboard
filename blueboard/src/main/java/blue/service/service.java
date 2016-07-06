package blue.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import blue.dao.dao;

@Service("service")
public class service {
	
	@Resource(name="dao")
	private dao dao;

	public List<java.util.Map<String, Object>> selectEduList(Map<String, Object> map) {
		return dao.selectEduList(map);
	}

	public void updateEdu(Map<String, Object> map) {
		dao.updateEdu(map);
	}

	public List<java.util.Map<String, Object>> selectCount(Map<String, Object> map) {
		return dao.selectCount(map);
	}

	public List<java.util.Map<String, Object>> selectFirstEdu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectFirstEdu(map);
	}

	

	

}
