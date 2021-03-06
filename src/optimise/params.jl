using DataFlow: OSet

children(x) = ()

params(ps, p::TrackedArray) = push!(ps, p)

params(ps, m) = foreach(m -> params(ps, m), children(m))

function params(m)
  ps = OSet()
  params(ps, m)
  return collect(ps)
end
