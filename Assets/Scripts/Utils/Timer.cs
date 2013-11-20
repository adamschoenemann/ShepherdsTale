public class Timer
{

	// in miliseconds
	public long duration {get; private set;}
	public long elapsed {get; private set;}

	public delegate void OnTickDelegate(Timer self, long interval);
	public OnTickDelegate onTick;

	public Timer(long durationMillis)
	{
		this.duration = durationMillis;
		this.elapsed = 0L;
	}

	public Timer(float durationSeconds)
	{
		this.duration = (long) (durationSeconds * 1000);
	}

	public void TickMilliseconds(long interval)
	{
		elapsed += interval;
		if(onTick != null)
			onTick(this, interval);
	}

	public void TickSeconds(float seconds)
	{
		TickMilliseconds((long) (seconds * 1000));
	}

	public bool IsDone()
	{
		return (elapsed >= duration);
	}

	public float GetProgress()
	{
		return elapsed / (float) duration;
	}

	public float GetElapsedSeconds()
	{
		return (float)(elapsed/1000.0f);
	}
}