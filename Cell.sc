Cell {
	var <vow, <reg, freq, amp, <>x, xpos, ypos, <>on = false;

	start { | vow, reg, freq, amp, xpos, ypos |
		var env;

		env = {EnvGen.kr(Env.adsr(peakLevel:amp), doneAction:2)};
		this.x = {Pan4.ar({Formants.ar(freq, Vowel(vow, reg)) * env}, xpos, ypos)}.play;
		this.on = true;
	}

	stop {
		if((this.x != nil), {this.x.release;});
	}
}