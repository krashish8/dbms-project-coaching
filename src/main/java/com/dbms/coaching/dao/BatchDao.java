package com.dbms.coaching.dao;

import java.util.List;

import com.dbms.coaching.models.Batch;

public interface BatchDao {
    public void save(Batch batch);

    public List<Batch> getAll();

    // TODO: Add getAllBatchByCourseId()

    public Batch get(String batchId, String courseId);

    public void update(Batch batch);

    public void delete(String batchId, String courseId);
}
