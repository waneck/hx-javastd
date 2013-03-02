package org.classpath.icedtea.pulseaudio;
/* PulseAudioClip.java
Copyright (C) 2008 Red Hat, Inc.

This file is part of IcedTea.

IcedTea is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2.

IcedTea is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with IcedTea; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
02110-1301 USA.

Linking this library statically or dynamically with other modules is
making a combined work based on this library.  Thus, the terms and
conditions of the GNU General Public License cover the whole
combination.

As a special exception, the copyright holders of this library give you
permission to link this library with independent modules to produce an
executable, regardless of the license terms of these independent
modules, and to copy and distribute the resulting executable under
terms of your choice, provided that you also meet, for each linked
independent module, the terms and conditions of the license of that
module.  An independent module is a module which is not derived from
or based on this library.  If you modify this library, you may extend
this exception to your version of the library, but you are not
obligated to do so.  If you do not wish to do so, delete this
exception statement from your version.
*/
@:internal extern class PulseAudioLine implements javax.sound.sampled.Line
{
	private var lineListeners : java.util.List<javax.sound.sampled.LineListener>;
	
	private var controls : java.util.List<javax.sound.sampled.Control>;
	
	@:overload public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload public function close() : Void;
	
	@:overload private function fireLineEvent(e : javax.sound.sampled.LineEvent) : Void;
	
	@:overload public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	@:overload public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	@:overload public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	/**
	* Obtains the <code>Line.Info</code> object describing this
	* line.
	* @return description of the line
	*/
	@:overload override public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	/**
	* Opens the line, indicating that it should acquire any required
	* system resources and become operational.
	* If this operation
	* succeeds, the line is marked as open, and an <code>OPEN</code> event is dispatched
	* to the line's listeners.
	* <p>
	* Note that some lines, once closed, cannot be reopened.  Attempts
	* to reopen such a line will always result in an <code>LineUnavailableException</code>.
	* <p>
	* Some types of lines have configurable properties that may affect
	* resource allocation.   For example, a <code>DataLine</code> must
	* be opened with a particular format and buffer size.  Such lines
	* should provide a mechanism for configuring these properties, such
	* as an additional <code>open</code> method or methods which allow
	* an application to specify the desired settings.
	* <p>
	* This method takes no arguments, and opens the line with the current
	* settings.  For <code>{@link SourceDataLine}</code> and
	* <code>{@link TargetDataLine}</code> objects, this means that the line is
	* opened with default settings.  For a <code>{@link Clip}</code>, however,
	* the buffer size is determined when data is loaded.  Since this method does not
	* allow the application to specify any data to load, an IllegalArgumentException
	* is thrown. Therefore, you should instead use one of the <code>open</code> methods
	* provided in the <code>Clip</code> interface to load data into the <code>Clip</code>.
	* <p>
	* For <code>DataLine</code>'s, if the <code>DataLine.Info</code>
	* object which was used to retrieve the line, specifies at least
	* one fully qualified audio format, the last one will be used
	* as the default format.
	*
	* @throws IllegalArgumentException if this method is called on a Clip instance.
	* @throws LineUnavailableException if the line cannot be
	* opened due to resource restrictions.
	* @throws SecurityException if the line cannot be
	* opened due to security restrictions.
	*
	* @see #close
	* @see #isOpen
	* @see LineEvent
	* @see DataLine
	* @see Clip#open(AudioFormat, byte[], int, int)
	* @see Clip#open(AudioInputStream)
	*/
	@:overload public function open() : Void;
	
	
}
