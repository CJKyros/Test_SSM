package contact.dao;

import contact.entity.Emp;
import java.util.List;

public interface EmpMapper {
    int deleteByPrimaryKey(Integer empId);

    int insert(Emp record);

    Emp selectByPrimaryKey(Integer empId);

    List<Emp> selectAll();

    int updateByPrimaryKey(Emp record);
}