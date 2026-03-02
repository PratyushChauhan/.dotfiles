- **MANDATORY:** When implementing a solution, do not rely on fallbacks by default, implement the original solution in the best way possible.
- conda env : engram-backend-dev
- use gh for github related commands.
- Implement features in as few lines of code as possible.
- Bonus points if an implementation removes more lines of code than it adds.
- Ensure brief comments in the codebase where needed. This makes code intent easier to understand. 
- Ensure detailed logs in our codebase to make debugging as easy as possible.

1. Never merge into, commit to, or push `main` unless the user explicitly asks in the current thread.
2. Default delivery branch is `dev` unless explicitly overridden by the user.

3. **MERGE RESTRICTIONS:** Never merge with other branches without explicit, prior consent or instruction.

4. **AESTHETICS & CREATIVITY:**
   You tend to converge toward generic, "on distribution" outputs. In frontend design, this creates what users call the "AI slop" aesthetic. Avoid this: make creative, distinctive frontends that surprise and delight.
   
   Focus on:
   - **Typography:** Choose fonts that are beautiful, unique, and interesting. Avoid generic fonts like Arial and Inter; opt instead for distinctive choices that elevate the frontend's aesthetics.
   - **Color & Theme:** Commit to a cohesive aesthetic. Use CSS variables for consistency. Dominant colors with sharp accents outperform timid, evenly-distributed palettes. Draw from IDE themes and cultural aesthetics for inspiration.
   - **Motion:** Use animations for effects and micro-interactions. Prioritize CSS-only solutions for HTML. Use Motion library for React when available. Focus on high-impact moments: one well-orchestrated page load with staggered reveals (animation-delay) creates more delight than scattered micro-interactions.
   - **Backgrounds:** Create atmosphere and depth rather than defaulting to solid colors. Layer CSS gradients, use geometric patterns, or add contextual effects that match the overall aesthetic.

   **Avoid generic AI-generated aesthetics:**
   - Overused font families (Inter, Roboto, Arial, system fonts)
   - Clichéd color schemes (particularly purple gradients on white backgrounds)
   - Predictable layouts and component patterns
   - Cookie-cutter design that lacks context-specific character

   Interpret creatively and make unexpected choices that feel genuinely designed for the context. Vary between light and dark themes, different fonts, different aesthetics. You still tend to converge on common choices (Space Grotesk, for example) across generations. Avoid this: it is critical that you think outside the box! To follow consistent design, you can create a `design-guide.md` file in the docs folder.

5. **STRICT SYNTAX & LINTING:**
   Act as a Strict Linter to prevent build errors and "smart quote" corruption.
   
   - **React/JSX Text Handling (CRITICAL):**
     - ALWAYS wrap text containing apostrophes (single quotes) or double quotes in JSX within a JavaScript expression.
     - **BAD:** `<p>User's Profile</p>` (Causes `react/no-unescaped-entities`)
     - **BAD:** `<p>User&apos;s Profile</p>` (Valid but reduces readability)
     - **GOOD:** `<p>{"User's Profile"}</p>`
   
   - **Quote Standardization:**
     - NEVER use typographical "smart quotes" or "curly quotes" (e.g., ‘ ’ “ ”). Use ONLY standard ASCII straight quotes (' or ").
     - STRICTLY use **double quotes (")** for all JSX attributes.
     - STRICTLY use **single quotes (')** for standard JavaScript/TypeScript string literals.
     - **EXCEPTION:** If a string contains a single quote, switch to double quotes to avoid backslash escaping (e.g., use `"Don't do this"` instead of `'Don\'t do this'`).

