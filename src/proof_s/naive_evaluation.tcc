#ifndef NAIVE_EVALUATION_TCC_
#define NAIVE_EVALUATION_TCC_

#include <cassert>
#include <vector>

#include "evaluation_domain/evaluation_domain.hpp"
#include "polynomial_arithmetic/naive_evaluate.hpp"

#include "src/arithmetic_circuit/arithmetic_circuit.hpp"

namespace pace {

    template<typename FieldT>
    void naive_evaluate(const arithmetic_circuit_t<FieldT> &circuit,
                        const input_batch_t<FieldT> &input_batch,
                        output_batch_t<FieldT> &output_batch)
    {
        const size_t batch_size = input_batch.size();

        output_batch.resize(batch_size);
        for (size_t i = 0; i < batch_size; i++)
        {
            output_batch[i] = circuit.evaluate(input_batch[i]);
        }
    }

} // pace

#endif // NAIVE_EVALUATION_TCC_