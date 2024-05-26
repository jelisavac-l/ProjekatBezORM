package domain;

import java.sql.SQLException;
import java.util.List;


public interface Entity {
    public int insert(Entity e) throws SQLException;
    public int update(Entity oldEnt, Entity newEnt) throws SQLException;
    public int delete(Entity e) throws SQLException;
    public List<Entity> select() throws SQLException;
}
