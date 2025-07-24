	component sincos is
		port (
			a      : in  std_logic_vector(15 downto 0) := (others => 'X'); -- a
			areset : in  std_logic                     := 'X';             -- reset
			c      : out std_logic_vector(14 downto 0);                    -- c
			clk    : in  std_logic                     := 'X';             -- clk
			s      : out std_logic_vector(14 downto 0);                    -- s
			en     : in  std_logic_vector(0 downto 0)  := (others => 'X')  -- en
		);
	end component sincos;

	u0 : component sincos
		port map (
			a      => CONNECTED_TO_a,      --      a.a
			areset => CONNECTED_TO_areset, -- areset.reset
			c      => CONNECTED_TO_c,      --      c.c
			clk    => CONNECTED_TO_clk,    --    clk.clk
			s      => CONNECTED_TO_s,      --      s.s
			en     => CONNECTED_TO_en      --     en.en
		);

