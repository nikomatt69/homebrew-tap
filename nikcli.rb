# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T20:36:48.985Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.187.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.187.0/nikcli-ai-darwin-x64.zip"
      sha256 "65650edea7e01c52b10edc1a14949a953b68a42bcd89f92ce78541252c4f86f6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.187.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a07e586d1456416c4b14f2063488a611cda61c064f3ed87792e8963240e094b9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.187.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "20ec716ec5d2b1858366c2b611acbf74ea39478e51e036c91f1a579252af8c59"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.187.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "222aa012024e3cca639641fb1b0fe549953809f13bff324b8b0d8e41efa5c1c7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

