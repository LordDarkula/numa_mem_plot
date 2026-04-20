# numa-mem-plot

`numa-mem-plot` is a small Python CLI for sampling per-node process memory
usage from `numastat -p` and writing a plot, with optional CSV output.

## Install

```bash
pip install .
```

For development:

```bash
pip install -e .
```

## Usage

After installation, use either the console script or module entrypoint:

```bash
numa-mem-plot --proc hot_cold --interval 1 --duration 60 --out plot.png
python -m numa_mem_plot --proc hot_cold --csv samples.csv --out plot.png
```

## Requirements

- Linux with `/proc`
- `numastat` available on `PATH`
- Python 3.10+

## Notes

The tool locks onto the first matching PID it sees, samples the `Private` row
from `numastat -p`, and plots one line per NUMA node.
