package ru.bolshoi.schedule.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.bolshoi.schedule.entity.Schedule;

@Repository
public interface ScheduleRepository extends CrudRepository<Schedule, Long> {
}
