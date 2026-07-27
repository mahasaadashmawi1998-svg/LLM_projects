covergroup cg_counter @(posedge clk);

    // Reset coverage
    coverpoint rst;

    // Counter value coverage
    coverpoint count {

        bins zero = {0};

        bins low = {[1:7]};

        bins high = {[8:14]};

        bins max = {15};

    }

endgroup

cg_counter counter_cov = new();