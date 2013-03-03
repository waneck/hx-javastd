package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class BasicLookAndFeel extends javax.swing.LookAndFeel implements java.io.Serializable
{
	/**
	* Returns the look and feel defaults. The returned {@code UIDefaults}
	* is populated by invoking, in order, {@code initClassDefaults},
	* {@code initSystemColorDefaults} and {@code initComponentDefaults}.
	* <p>
	* While this method is public, it should only be invoked by the
	* {@code UIManager} when the look and feel is set as the current
	* look and feel and after {@code initialize} has been invoked.
	*
	* @return the look and feel defaults
	*
	* @see #initClassDefaults
	* @see #initSystemColorDefaults
	* @see #initComponentDefaults
	*/
	@:overload @:public override public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function initialize() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function uninitialize() : Void;
	
	/**
	* Populates {@code table} with mappings from {@code uiClassID} to the
	* fully qualified name of the ui class. The value for a
	* particular {@code uiClassID} is {@code
	* "javax.swing.plaf.basic.Basic + uiClassID"}. For example, the
	* value for the {@code uiClassID} {@code TreeUI} is {@code
	* "javax.swing.plaf.basic.BasicTreeUI"}.
	*
	* @param table the {@code UIDefaults} instance the entries are
	*        added to
	* @throws NullPointerException if {@code table} is {@code null}
	*
	* @see javax.swing.LookAndFeel
	* @see #getDefaults
	*/
	@:overload @:protected private function initClassDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Populates {@code table} with system colors. This creates an
	* array of {@code name-color} pairs and invokes {@code
	* loadSystemColors}.
	* <p>
	* The name is a {@code String} that corresponds to the name of
	* one of the static {@code SystemColor} fields in the {@code
	* SystemColor} class.  A name-color pair is created for every
	* such {@code SystemColor} field.
	* <p>
	* The {@code color} corresponds to a hex {@code String} as
	* understood by {@code Color.decode}. For example, one of the
	* {@code name-color} pairs is {@code
	* "desktop"-"#005C5C"}. This corresponds to the {@code
	* SystemColor} field {@code desktop}, with a color value of
	* {@code new Color(0x005C5C)}.
	* <p>
	* The following shows two of the {@code name-color} pairs:
	* <pre>
	*   String[] nameColorPairs = new String[] {
	*          "desktop", "#005C5C",
	*    "activeCaption", "#000080" };
	*   loadSystemColors(table, nameColorPairs, isNativeLookAndFeel());
	* </pre>
	*
	* As previously stated, this invokes {@code loadSystemColors}
	* with the supplied {@code table} and {@code name-color} pair
	* array. The last argument to {@code loadSystemColors} indicates
	* whether the value of the field in {@code SystemColor} should be
	* used. This method passes the value of {@code
	* isNativeLookAndFeel()} as the last argument to {@code loadSystemColors}.
	*
	* @param table the {@code UIDefaults} object the values are added to
	* @throws NullPointerException if {@code table} is {@code null}
	*
	* @see java.awt.SystemColor
	* @see #getDefaults
	* @see #loadSystemColors
	*/
	@:overload @:protected private function initSystemColorDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Populates {@code table} with the {@code name-color} pairs in
	* {@code systemColors}. Refer to
	* {@link #initSystemColorDefaults(UIDefaults)} for details on
	* the format of {@code systemColors}.
	* <p>
	* An entry is added to {@code table} for each of the {@code name-color}
	* pairs in {@code systemColors}. The entry key is
	* the {@code name} of the {@code name-color} pair.
	* <p>
	* The value of the entry corresponds to the {@code color} of the
	* {@code name-color} pair.  The value of the entry is calculated
	* in one of two ways. With either approach the value is always a
	* {@code ColorUIResource}.
	* <p>
	* If {@code useNative} is {@code false}, the {@code color} is
	* created by using {@code Color.decode} to convert the {@code
	* String} into a {@code Color}. If {@code decode} can not convert
	* the {@code String} into a {@code Color} ({@code
	* NumberFormatException} is thrown) then a {@code
	* ColorUIResource} of black is used.
	* <p>
	* If {@code useNative} is {@code true}, the {@code color} is the
	* value of the field in {@code SystemColor} with the same name as
	* the {@code name} of the {@code name-color} pair. If the field
	* is not valid, a {@code ColorUIResource} of black is used.
	*
	* @param table the {@code UIDefaults} object the values are added to
	* @param systemColors array of {@code name-color} pairs as described
	*        in {@link #initSystemColorDefaults(UIDefaults)}
	* @param useNative whether the color is obtained from {@code SystemColor}
	*        or {@code Color.decode}
	* @throws NullPointerException if {@code systemColors} is {@code null}; or
	*         {@code systemColors} is not empty, and {@code table} is
	*         {@code null}; or one of the
	*         names of the {@code name-color} pairs is {@code null}; or
	*         {@code useNative} is {@code false} and one of the
	*         {@code colors} of the {@code name-color} pairs is {@code null}
	* @throws ArrayIndexOutOfBoundsException if {@code useNative} is
	*         {@code false} and {@code systemColors.length} is odd
	*
	* @see #initSystemColorDefaults(javax.swing.UIDefaults)
	* @see java.awt.SystemColor
	* @see java.awt.Color#decode(String)
	*/
	@:overload @:protected private function loadSystemColors(table : javax.swing.UIDefaults, systemColors : java.NativeArray<String>, useNative : Bool) : Void;
	
	/**
	* Populates {@code table} with the defaults for the basic look and
	* feel.
	*
	* @param table the {@code UIDefaults} to add the values to
	* @throws NullPointerException if {@code table} is {@code null}
	*/
	@:overload @:protected private function initComponentDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Returns an <code>ActionMap</code> containing the audio actions
	* for this look and feel.
	* <P>
	* The returned <code>ActionMap</code> contains <code>Actions</code> that
	* embody the ability to render an auditory cue. These auditory
	* cues map onto user and system activities that may be useful
	* for an end user to know about (such as a dialog box appearing).
	* <P>
	* At the appropriate time,
	* the {@code ComponentUI} is responsible for obtaining an
	* <code>Action</code> out of the <code>ActionMap</code> and passing
	* it to <code>playSound</code>.
	* <P>
	* This method first looks up the {@code ActionMap} from the
	* defaults using the key {@code "AuditoryCues.actionMap"}.
	* <p>
	* If the value is {@code non-null}, it is returned. If the value
	* of the default {@code "AuditoryCues.actionMap"} is {@code null}
	* and the value of the default {@code "AuditoryCues.cueList"} is
	* {@code non-null}, an {@code ActionMapUIResource} is created and
	* populated. Population is done by iterating over each of the
	* elements of the {@code "AuditoryCues.cueList"} array, and
	* invoking {@code createAudioAction()} to create an {@code
	* Action} for each element.  The resulting {@code Action} is
	* placed in the {@code ActionMapUIResource}, using the array
	* element as the key.  For example, if the {@code
	* "AuditoryCues.cueList"} array contains a single-element, {@code
	* "audioKey"}, the {@code ActionMapUIResource} is created, then
	* populated by way of {@code actionMap.put(cueList[0],
	* createAudioAction(cueList[0]))}.
	* <p>
	* If the value of the default {@code "AuditoryCues.actionMap"} is
	* {@code null} and the value of the default
	* {@code "AuditoryCues.cueList"} is {@code null}, an empty
	* {@code ActionMapUIResource} is created.
	*
	*
	* @return      an ActionMap containing {@code Actions}
	*              responsible for playing auditory cues
	* @throws ClassCastException if the value of the
	*         default {@code "AuditoryCues.actionMap"} is not an
	*         {@code ActionMap}, or the value of the default
	*         {@code "AuditoryCues.cueList"} is not an {@code Object[]}
	* @see #createAudioAction
	* @see #playSound(Action)
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getAudioActionMap() : javax.swing.ActionMap;
	
	/**
	* Creates and returns an {@code Action} used to play a sound.
	* <p>
	* If {@code key} is {@code non-null}, an {@code Action} is created
	* using the value from the defaults with key {@code key}. The value
	* identifies the sound resource to load when
	* {@code actionPerformed} is invoked on the {@code Action}. The
	* sound resource is loaded into a {@code byte[]} by way of
	* {@code getClass().getResourceAsStream()}.
	*
	* @param key the key identifying the audio action
	* @return      an {@code Action} used to play the source, or {@code null}
	*              if {@code key} is {@code null}
	* @see #playSound(Action)
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function createAudioAction(key : Dynamic) : javax.swing.Action;
	
	/**
	* If necessary, invokes {@code actionPerformed} on
	* {@code audioAction} to play a sound.
	* The {@code actionPerformed} method is invoked if the value of
	* the {@code "AuditoryCues.playList"} default is a {@code
	* non-null} {@code Object[]} containing a {@code String} entry
	* equal to the name of the {@code audioAction}.
	*
	* @param audioAction an Action that knows how to render the audio
	*                    associated with the system or user activity
	*                    that is occurring; a value of {@code null}, is
	*                    ignored
	* @throws ClassCastException if {@code audioAction} is {@code non-null}
	*         and the value of the default {@code "AuditoryCues.playList"}
	*         is not an {@code Object[]}
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function playSound(audioAction : javax.swing.Action) : Void;
	
	
}
/**
* Pass the name String to the super constructor. This is used
* later to identify the Action and decide whether to play it or
* not. Store the resource String. I is used to get the audio
* resource. In this case, the resource is an audio file.
*
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$basic$BasicLookAndFeel$AudioAction') @:internal extern class BasicLookAndFeel_AudioAction extends javax.swing.AbstractAction implements javax.sound.sampled.LineListener
{
	/**
	* The String is the name of the Action and
	* points to the audio resource.
	* The byte[] is a buffer of the audio bits.
	*/
	@:overload @:public public function new(name : String, resource : String) : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function update(event : javax.sound.sampled.LineEvent) : Void;
	
	
}
/**
* This class contains listener that watches for all the mouse
* events that can possibly invoke popup on the component
*/
@:native('javax$swing$plaf$basic$BasicLookAndFeel$AWTEventHelper') @:internal extern class BasicLookAndFeel_AWTEventHelper implements java.awt.event.AWTEventListener implements java.security.PrivilegedAction<Dynamic>
{
	@:overload @:public public function run() : Dynamic;
	
	@:overload @:public public function eventDispatched(ev : java.awt.AWTEvent) : Void;
	
	
}
