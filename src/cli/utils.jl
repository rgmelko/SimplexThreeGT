function foreach_shape(f)
    for d in 3:4, L in 4:2:16
        f(d, L)
    end
end

function foreach_field(f)
    for h_start in 1.0:-0.05:0.05
        h_stop = round(h_start - 0.04; digits=2)
        f(h_start, h_stop)
    end
    f(0.0, 0.0)
    return
end

root_dir(xs...) = relpath(pkgdir(SimplexThreeGT, "scripts", xs...), pkgdir(SimplexThreeGT))
task_dir(xs...) = root_dir("tasks", xs...)
slurm_dir(xs...) = root_dir("slurm", xs...)
