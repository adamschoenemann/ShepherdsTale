public class Timer
{

	// in miliseconds
	private long duration;
	private long elapsed;

	public Timer(long duration)
	{
		this.duration = duration;
		this.elapsed = 0L;
	}

	public void tickMilliseconds(long interval)
	{
		elapsed += interval;
	}

	public void tickSeconds(float seconds)
	{
		tickMilliseconds((long) (seconds * 1000));
	}

	public bool IsDone()
	{
		return (elapsed >= duration);
	}
}