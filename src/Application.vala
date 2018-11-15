/*
 * MIT License
 *
 * Copyright (c) 2018 Vanat
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

using Vanat.Utils;
using Vanat.Commands;

namespace Vanat {

    /**
     * This {@code Application} class is for working on command line.
     *
     * @author Robert San
     * @since 0.1.0
     */
    public class Application : GLib.Application {

        /**
         * Constructs a new {@code Application} object.
         */
        public Application () {
            Object (
                application_id: "com.github.vanat",
                flags: ApplicationFlags.HANDLES_COMMAND_LINE
            );
        }

        /**
         * The command_line signal is issued immediately after the object
         * is created to process the typed arguments.
         *
         * @see Vanat.Commands.VanatCommand
         * @param  {@code ApplicationCommandLine} command_line
         * @return {@code int}
         */
        public override int command_line (GLib.ApplicationCommandLine command_line) {
            var commands = new Console.Commands ();

            commands.default_command = new DefaultCommand ();
            commands["init"] = new InitCommand ();
            commands["install"] = new InstallCommand ();
            commands["about"] = new AboutCommand ();
            commands["help"] = new HelpCommand ();

            commands.execute_with_args (command_line.get_arguments ());
            return 0;
        }
    }
}
