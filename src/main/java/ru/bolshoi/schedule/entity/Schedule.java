package ru.bolshoi.schedule.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.List;

@Data
@NoArgsConstructor
@Entity
@Table(name = "schedule")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_schedule")
    @SequenceGenerator(name="seq_schedule", sequenceName = "seq_schedule")
    private Long id;

    @NotNull
    @Column(name = "begin_date", nullable = false)
    private LocalDate beginDate;

    @NotNull
    @Column(name = "end_date", nullable = false)
    private LocalDate endDate;

    @NotNull
    @Column(name = "is_actual", nullable = false)
    private short isActual;

    @OneToMany(mappedBy = "schedule", fetch = FetchType.LAZY)
    private List<ScheduleElement> scheduleElements;
}
