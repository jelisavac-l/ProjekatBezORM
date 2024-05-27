package domain;

import java.sql.SQLException;
import java.util.List;


public interface Entity {
    public int insert() throws SQLException;
    public int update(Entity newEnt) throws SQLException;
    public int delete() throws SQLException;
}
