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

using Vanat.Library.Utils;

namespace Vanat.Library.Commands {

    /**
     * The {@code AboutCommand} class
     *
     * @author Robert San
     * @since 0.1.0
     */
    public class AboutCommand {
     
        /**
         * Constructs a new {@code AboutCommand} object 
         * and sets the default exit folder.
         */
        public AboutCommand () {
           ConsoleUtil.write_custom_color("Vanat - Package Management for Vala", true, false, "green");
           ConsoleUtil.write_custom_color("Vanat is a dependency manager tracking local dependencies of your projects and libraries.", true, false, "yellow");
           ConsoleUtil.write_custom_color("See https://vanat.github.io for more infor", true, false, "yellow");
        }

        /**
         * [start_process description]
         * 
         * @return {[type]} [description]
         */
        public static AboutCommand start_process () {
            return new AboutCommand ();
        }
    }
}