public class Timer
{

	// in miliseconds
	public long duration {get; private set;}
	public long elapsed {get; private set;}

	public delegate void OnTickDelegate(Timer self, long interval);
	public OnTickDelegate onTick;

	public delegate void OnDoneDelegate(Timer self);
	public OnDoneDelegate onDone;

	public Timer(long duration) // Milliseconds
	{
		this.duration = duration;
		this.elapsed = 0L;
	}

	public Timer(float durationSeconds) :
		this((long)(durationSeconds * 1000))
	{
		// Deliberately empty
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
		if(IsDone() && onDone != null)
		{
			onDone(this);
		}
	}

	public bool IsDone()
	{
		return (elapsed > duration);
	}

	public float GetProgress()
	{
		return elapsed / (float) duration;
	}

	public float GetElapsedSeconds()
    {
        return (float)(elapsed/1000.0f);
    }

    public void Reset()
    {
        elapsed = 0L;
    }
}