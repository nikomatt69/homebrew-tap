# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-01T00:31:27.869Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.420.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.420.0/nikcli-ai-darwin-x64.zip"
      sha256 "135c9b0215aea9620bac0d2ff3840cecd25efd8094f6ca429ea4d19fe3240742"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.420.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2c989b29e6ce65008612875351f7826336d988988a7af3515525405bb5f99ecc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.420.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "47a19c26877eb691ee8e9c14441886729dc2679280bb0cd72e23c62c22d568c1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.420.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "20dad8d371bc5dc351064e4ad5d36255380dd825932886ab6b5ef5e01578c680"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

